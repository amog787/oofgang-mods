.class public Landroidx/animation/AnimatorUtils;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field public static final FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

.field public static final FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public static final GRID_ITEM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public static final op__control_interpolator_fast_out_linear_in:Landroid/view/animation/Interpolator;

.field public static final op_control_interpolator_fast_out_slow_in_auxiliary:Landroid/view/animation/Interpolator;

.field public static final op_control_interpolator_fast_out_slow_in_standard:Landroid/view/animation/Interpolator;

.field public static final op_control_interpolator_linear_out_slow_in:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 20
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/animation/AnimatorUtils;->op_control_interpolator_fast_out_slow_in_standard:Landroid/view/animation/Interpolator;

    .line 21
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f333333    # 0.7f

    const v6, 0x3f19999a    # 0.6f

    invoke-direct {v0, v5, v2, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 22
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/animation/AnimatorUtils;->op__control_interpolator_fast_out_linear_in:Landroid/view/animation/Interpolator;

    .line 23
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const v7, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v5, v2, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/animation/AnimatorUtils;->op_control_interpolator_fast_out_slow_in_auxiliary:Landroid/view/animation/Interpolator;

    .line 24
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/animation/AnimatorUtils;->op_control_interpolator_linear_out_slow_in:Landroid/view/animation/Interpolator;

    .line 77
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/animation/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 79
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/animation/AnimatorUtils;->FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

    .line 80
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/animation/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 81
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/animation/AnimatorUtils;->GRID_ITEM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-void
.end method
