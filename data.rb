module Store 
  def load_options
    @options = [
          {
            id: 1,
            title: "html/css"
          },
          {
            id: 2,
            title: "javascript"
          },
          {
            id: 3,
            title: "ruby"
          },
          {
            id: 4,
            title: "react"
          }
        ]
    @options
  end

  def load_questions(topic)
    @data = [
    {
      topic: "html/css",
      questions: 
      [
        {
          id: 1,
          question: "what is an html tag?",
          answer: "it is what html content is wrapped in"
        },
        {
          id: 2,
          question: "what are three parts of an html element?",
          answer: "openning tag, content, and closing tag"
        },
        {
          id: 3,
          question: "what is the purpose of the doctype declaration?",
          answer: "to tell the browser what version of html to render"
        },
        {
          id: 4,
          question: "what is the purpose of the head element?",
          answer: "to put meta information about the web page and stuff to render correctly in the browser"
        },
        {
          id: 5,
          question: "how many different level of headings are there?",
          answer: "there are 6 levels from h1 to h6"
        },
        {
          id: 6,
          question: "what relationship does and element and his nested elments has?",
          answer: "a parent-child relationship"
        },
        {
          id: 7,
          question: "how to create html comments?",
          answer: "use <!-- and -->"
        },
        {
          id: 8,
          question: "what is an attribute?",
          answer: "it gives additional information about the html element and it goes on the opening tag"
        },
        {
          id: 9,
          question: "what is the difference between absolute and relative links?",
          answer: "absolutes are links in other websites, relative are links in our own website"
        },
        {
          id: 10,
          question: "what are the parts of absolute link?",
          answer: "protocol, domain and path. protocol://domain/path"
        },
        {
          id: 11,
          question: "what are character entities?",
          answer: "they are used to display reserved characters in html. ie: non-breanking-space"
        },
        {
          id: 12,
          question: "what are the different content models?",
          answer: "inline and block(renders in a new line by default). inline elements may contain only data and other inline elements, but not block elements"
        },
        {
          id: 13,
          question: "what are the semantic tags",
          answer: "these are tags that gives a meaning to an element.article:self contained and resusable content, aside: indirect related to main content. main: dominant content of the body.",
        },
        {
          id: 14,
          question: "what is the rules anatomy?",
          answer: "css rule contains a css selector with contains many css declarations. declaration contains properties, values and units"
        },
        {
          id: 15,
          question: "what are the units of measurement?",
          answer: "absolutes units: px, pt. relatives: em(font size parent element), vh(1% viewports height), vw(1% viewports witdth)"
        },
        {
          id: 16,
          question: "what is the box model?",
          answer: "it is a set of rules to define how a webpage is rendered, includes padding, border, margin, block boxes and inline boxes"
        },
        {
          id: 17,
          question: "what is BEM?",
          answer: "Block(entity meaningful on its own) element(part of a block with meaning tied to the block) modifier(something that changes behavior of the block or element)."
        },
        {
          id: 18,
          question: "what is component first vs utility first classes?",
          answer: "component first is when you class has meaning. utility first is when your classes defines small aspects of design and can be used together with composition"
        },
        {
          id: 19,
          question: "how to use media queries?",
          answer: "they are use to modify your web or app depending on the device screen resolution. it uses media types(@media screen) and media features(ie: min-width)"
        },
        {
          id: 20,
          question: "what are pseudo classes?",
          answer: "it is a keyword added to a css selector for a specific state of the element. ie: button:hover"
        }

      ],
    },
    {
    topic: "javascript",
    questions: [
      {
        id: 1,
        question: "explain scope and scope chain?",
        answer: ""
      },
      {
        id: 2,
        question: "what is a callback?",
        answer: ""
      },
      {
        id: 3,
        question: "what is currying?",
        answer: ""
      },
      {
        id: 4,
        question: "what are HOF?",
        answer: ""
      },
      {
        id: 5,
        question: "what is a promise?",
        answer: ""
      },
      {
        id: 6,
        question: "what are modules?",
        answer: ""
      },
      {
        id: 7,
        question: "what is closure?",
        answer: ""
      },
      {
        id: 8,
        question: "what is hoisting?",
        answer: ""
      },
      {
        id: 9,
        question: "what is a self executing function?",
        answer: ""
      },
      {
        id: 10,
        question: "what is difference between == and === ?",
        answer: ""
      },
      {
        id: 11,
        question: "explain 'this' keyword",
        answer: ""
      },
      {
        id: 12,
        question: "explain call aplly and bind?",
        answer: ""
      },
      {
        id: 13,
        question: "explain implicit type coercion",
        answer: ""
      },
      {
        id: 14,
        question: "what is memoization?",
        answer: ""
      },
      {
        id: 15,
        question: "what is a DOM?",
        answer: ""
      },
      {
        id: 16,
        question: "is javascript statically typed or dynamically typed language?",
        answer: ""
      },
      {
        id: 17,
        question: "what is Nan property?",
        answer: ""
      },
      {
        id: 18,
        question: "what are objects prototypes?",
        answer: ""
      },
      {
        id: 19,
        question: "what are arrow functions?",
        answer: ""
      },
      {
        id: 20,
        question: "what are the differences between var, let and const?",
        answer: ""
      },

    ]
    }
  ]

    if @data.any? {|item| item[:topic] == topic.to_s}
      @questions = @data.find {|item| item[:topic] == topic.to_s}[:questions]
      p "#{@questions.count} questions loaded for #{topic}"
      return @questions
    else
      p "no data found for #{topic}"
      return []
    end
  end
end
