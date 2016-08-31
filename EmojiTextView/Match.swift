//
//  Match.swift
//  EmojiTextView
//
//  Created by Arkadiusz Holko on 20/07/16.
//  Copyright © 2016 Arkadiusz Holko. All rights reserved.
//

import Foundation

/// `Match` class keeps information about a single word that can be replaced with an emoji.
class Match {
  /// State of the animated transition (highlighting).
  enum TransitionState {
    case notStarted
    case running
    case completed
  }

  let string: String
  let emoji: String
  let attributedString: NSAttributedString
  var transitionState = TransitionState.notStarted

  init(string: String, emoji: String, attributedString: NSAttributedString? = nil) {
    self.string = string
    self.emoji = emoji
    self.attributedString = attributedString ?? NSAttributedString(string: emoji)
  }
}
