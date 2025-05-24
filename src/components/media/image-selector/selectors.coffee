Selectors = 

  "browse file button": "button[name='browse files']"

  "other buttons": "button:not([name='browse files'])"

  "file input": "input[type='file']"

  "search gadgets": "[data-state='browse gadgets'] 
    form-autocomplete[name='term']"

  "unsplash autocomplete": "[data-state='browse unsplash']
    form-autocomplete[name='term']"

  "unsplash field": "[data-state='browse unsplash']
    vellum-field[name='search']"

  "url input": "vellum-field[type='url']"

export default Selectors