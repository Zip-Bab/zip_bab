package recipereview;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.time.LocalDateTime;

@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class RecipeReview {
    private int reviewId;
    private int memberId;
    private int recipeId;
    private String content;
    private LocalDateTime writeTime;
}
