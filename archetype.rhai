let context = #{};

context += prompt("Github Organization:", "organization-name", #{
  placeholder: "acme-inc",
  help: "The organization or username where this project will be published",
});

context += prompt("Project Title:", "project-title", #{
  placeholder: "Customer",
  help: "The title of the front end application",
});

context += prompt("Project Prefix:", "project-prefix", #{
  defaults_with: render("{{ project-title | kebab_case }}", context),
  help: "The project name; suffix '-frontend' will be appended automatically",
  cases: [
    CasedIdentityCasedValue(PROGRAMMING_CASES),
  ], 
});

context += set("project-suffix", "frontend");

context += set("project-name", render("{{ project-prefix }}-{{ project-suffix }}", context), #{
  cases: [
    CasedIdentityCasedValue(PROGRAMMING_CASES),
  ],
});

render(Directory("contents/base"), context);

display();

log(Info, "Copy and paste the following commands to publish your project:");

display();

display(render("cd {{ project-name }}", context));
display("git init -b main");
display(render("gh repo create {{ organization-name }}/{{ project-name }} --private --source=. --remote=origin", context));
display("git add .");
display("git commit -m 'initial commit'");
display("git push -u origin HEAD");
