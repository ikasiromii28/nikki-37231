window.addEventListener('load', () => {
  
  const textInput = document.getElementById("post_text");
  textInput.addEventListener("input", () => {
    const inputLength = textInput.length;
    console.log(inputLength);

    const addTextLengthDom = document.getElementById("text-length");
    addTextLengthDom.innerHTML = (Math.floor(inputLength));
  })
});