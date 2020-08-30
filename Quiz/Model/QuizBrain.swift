


import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "飛行機の搭乗口がすべて左側なのはなぜ？", a: ["船の習慣が持ち込まれているから", "国際的な規約で決まっているから", "左は高貴な人が位置する場所だから"], correctAnswer: "船の習慣が持ち込まれているから"),
        Question(q: "東京タワーの展望台より上の部分において、素材として使われたのは？", a: ["ラジオ", "日本刀", "戦車"], correctAnswer: "戦車"),
        Question(q: "ソメイヨシノの発祥の地はどこ？", a: ["奈良", "江戸", "京都"], correctAnswer: "江戸"),
        Question(q: "7月22日は何の日？", a: ["ゆかたの日", "最高気温記念日", "円周率近似の日"], correctAnswer: "円周率近似の日"),
        Question(q: "死人と結婚するときに大統領の審査が必要であるという法律が存在する国は？", a: ["ロシア", "アメリカ", "フランス"], correctAnswer: "フランス"),
        Question(q: "畳の発祥地は？", a: ["中国", "日本", "インド"], correctAnswer: "日本"),
        Question(q: "ひな人形が表している場面は何？", a: ["お正月", "結婚式", "お茶会"], correctAnswer: "結婚式"),
        Question(q: "コンクリートの電柱の中はどうなっている？", a: ["空洞", "木の柱がある", "コンクリートが詰まっている"], correctAnswer: "空洞"),
        Question(q: "高速のPAの駐車線が斜めなのはなぜ？", a: ["スペースを広く使うため", "逆走を防ぐため", "ナンバーを見やすくするため"], correctAnswer: "逆走を防ぐため"),
        Question(q: "歴代の日本の総理大臣で、就任時に最も年齢が若かったのは誰？", a: ["田中角栄", "伊藤博文", "吉田茂"], correctAnswer: "伊藤博文")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    //Need a way of fetching the answer choices.
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here. 
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

