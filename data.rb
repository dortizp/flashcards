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
          question: "this is a question?",
          answer: "this is the answer"
        },
        {
          id: 1,
          question: "this is a question?",
          answer: "this is the answer"
        },
        {
          id: 1,
          question: "this is a question?",
          answer: "this is the answer"
        },
      ],
    },
    {
    topic: "javascript",
    questions: [
      {
        id: 1,
        question: "this is a question?",
        answer: "this is the answer"
      },
      {
        id: 1,
        question: "this is a question?",
        answer: "this is the answer"
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
