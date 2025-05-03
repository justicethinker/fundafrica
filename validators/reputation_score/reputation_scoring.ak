// Reputation system contract
type Reputation {
  datum ReputationScore {
    user: ByteArray,
    score: Int,
    last_updated: Int,
    activities: List<Activity>
  }

  type Activity {
    activity_type: ByteArray,
    timestamp: Int,
    impact: Int
  }

  transition update_reputation(
    user: ByteArray,
    activity: Activity
  ) {
    // Validate activity
    assert { is_valid_activity(activity): "Invalid activity type" }
    
    // Calculate score impact
    let new_score = calculate_score_impact(ctx.reputation.score, activity)
    
    ReputationScore {
      user,
      score: new_score,
      last_updated: current_slot(),
      activities: append(ctx.reputation.activities, activity)
    }
  }

  fn calculate_score_impact(current: Int, activity: Activity) -> Int {
    // Implement reputation scoring logic
    // ...
  }
}