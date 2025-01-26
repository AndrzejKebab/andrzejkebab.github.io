# -*- coding: utf-8 -*- #
# frozen_string_literal: true

module Rouge
      module Themes
        class MonokaiSublime < CSSTheme
          name 'monokai.sublime.slate'
    
          # Palette derived and adjusted
          palette :black          => '#000000'
          palette :bright_green   => '#a6e22e'
          palette :bright_pink    => '#f92672'
          palette :carmine        => '#960050'
          palette :dark           => '#49483e'
          palette :dark_graphite  => '#272822'
          palette :dark_grey      => '#888888'
          palette :dark_red       => '#aa0000'
          palette :dimgrey        => '#736f5c' # Adjusted from DEFAULT_LINE_COMMENT
          palette :emperor        => '#555555'
          palette :grey           => '#999999'
          palette :light_grey     => '#aaaaaa'
          palette :light_violet   => '#af82ff' # Adjusted from DEFAULT_OPERATION_SIGN
          palette :soft_cyan      => '#94d5ff' # Adjusted from DEFAULT_DOC_COMMENT_TAG_VALUE
          palette :soft_yellow    => '#e5da72' # Adjusted from DEFAULT_STRING
          palette :very_dark      => '#1e0010'
          palette :whitish        => '#f8f8f2'
          palette :orange         => '#fa961e' # Adjusted from DEFAULT_CLASS_NAME
          palette :white          => '#ffffff'
    
          style Generic::Heading,                 :fg => :grey
          style Literal::String::Regex,           :fg => :orange
          style Generic::Output,                  :fg => :dark_grey
          style Generic::Prompt,                  :fg => :emperor
          style Generic::Emph,                    :italic => true
          style Generic::EmphStrong,              :italic => true, :bold => true
          style Generic::Strong,                  :bold => true
          style Generic::Subheading,              :fg => :light_grey
          style Name::Builtin,                    :fg => :orange
          style Comment::Multiline,
                Comment::Preproc,
                Comment::Single,
                Comment::Special,
                Comment,                          :fg => :dimgrey
          style Error,
                Generic::Error,
                Generic::Traceback,               :fg => :carmine
          style Generic::Deleted,
                Generic::Inserted,                :fg => :dark
          style Keyword::Constant,
                Keyword::Declaration,
                Keyword::Reserved,
                Name::Constant,
                Keyword::Type,                    :fg => :soft_cyan
          style Literal::Number::Float,
                Literal::Number::Hex,
                Literal::Number::Integer::Long,
                Literal::Number::Integer,
                Literal::Number::Oct,
                Literal::Number,                  :fg => '#fa2878' # Adjusted from DEFAULT_NUMBER
          style Literal::String::Doc,
                Literal::String::Double,
                Literal::String::Backtick,
                Literal::String::Heredoc,
                Literal::String::Interpol,
                Literal::String::Other,
                Literal::String::Single,
                Literal::String,                  :fg => :soft_yellow
          style Name::Attribute,
                Name::Class,
                Name::Decorator,
                Name::Exception,
                Name::Function,                   :fg => :bright_green
          style Name::Variable::Class,
                Name::Namespace,
                Name::Label,
                Name::Entity,
                Name::Builtin::Pseudo,
                Name::Variable::Global,
                Name::Variable::Instance,
                Name::Variable,                   :fg => :white, :bg => :dark_graphite
          style Operator::Word,
                Name::Tag,
                Keyword,
                Keyword::Namespace,
                Keyword::Pseudo,
                Operator,                         :fg => :bright_pink
        end
      end
    end    