# class WordSynth
#   def initialize
#     @effects = []
#   end

#   def add_effect(effect)
#     @effects << effect
#   end

#   def play(original_words)
#     @effects.inject(original_word) do |words, effect|
#       # 効果を適用する
#       effect.call(words)
#     end
#   end
# end
# ----------------------------------------------------------
# "Hello!"という文字列を返すProcオブジェクトを作成する
# hello_proc = Proc.new do
#   'Hello!'
# end

# do ... endの変わりに{}を使ってもよい
# hello_proc = Proc.new { 'Hello!' }
# Procオブジェクトを実行する(文字列が返る)
# p hello_proc.call

# ------------------------------------------------------------

class WordSynth
  def initialize
    @effects = []
  end

  def add_effect(effect)
    @effects << effect
  end

  def play(original_words)
    @effects.inject(original_words) do |words, effect|
      effect.call(words)
    end
  end
end
