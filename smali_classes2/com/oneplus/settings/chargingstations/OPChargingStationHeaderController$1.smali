.class Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController$1;
.super Ljava/lang/Object;
.source "OPChargingStationHeaderController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$charing_pillar_animation_2:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 58
    iput-object p2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController$1;->val$charing_pillar_animation_2:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController$1;->val$charing_pillar_animation_2:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object p0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationHeaderController$1;->val$charing_pillar_animation_2:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
