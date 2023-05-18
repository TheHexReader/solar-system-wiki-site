document.getElementById('language-btn').addEventListener('click', () => {
  let languages = ['en', 'ru']

  let buttons = []
  for (let i in languages) {
    let button = document.createElement('button');
    button.classList.add('btn', 'btn-dark', 'd-flex', 'position-absolute');
    button.setAttribute('data-language', languages[i])

    let image = document.createElement('img');
    image.style.width = '40px';
    image.style.height = '40px';
    image.src = `/${languages[i]}.png`;

    button.appendChild(image);
    buttons.push(button);
  }

  let language_btn = document.getElementById('language-btn').getBoundingClientRect();

  let down = language_btn.bottom + 20;

  for (let i in buttons) {
    buttons[i].setAttribute("style", `left: ${language_btn.left + 10}px; top: ${down}px; z-index: 100;`);
    down += 60;
    
    buttons[i].addEventListener('click', () => {
      let form = document.createElement('form');
      form.setAttribute('method', 'post');
      form.setAttribute('action', '/change_language');

      let input = document.createElement('input');
      input.setAttribute('name', 'language');
      input.setAttribute('value', buttons[i].getAttribute('data-language'))
      form.appendChild(input)
      
      form.setAttribute('style', 'display: none;');
      document.body.appendChild(form)
      form.submit();
    })

    document.body.appendChild(buttons[i]);
  }

});