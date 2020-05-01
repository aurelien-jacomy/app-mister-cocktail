const showForm = () => {
	document.querySelector('#add-dose').addEventListener("click", (event) => {
		event.preventDefault();
		document.querySelector('#dose-form').setAttribute("style", "display")
	});
}

export { showForm }