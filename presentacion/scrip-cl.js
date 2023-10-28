const buttons = [
    "ofer",
    "comp",
    "arPC",
    "trg",
    "Proces",
    "gabt",
    "notebk",
    "emps"
];

buttons.forEach((buttonId) => {
    const button = document.getElementById(`${buttonId}Btn`);
    const section = document.getElementById(`${buttonId}Section`);

    button.addEventListener("click", () => {
        buttons.forEach((btnId) => {
            document.getElementById(`${btnId}Section`).classList.add("hide");
        });

        section.classList.remove("hide");
    });
});