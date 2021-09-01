.class public Lcom/android/settings/widget/NotificationLottiePreference;
.super Landroidx/preference/Preference;
.source "NotificationLottiePreference.java"


# instance fields
.field private mNotificationView:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationLottiePreference;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationLottiePreference;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    invoke-direct {p0}, Lcom/android/settings/widget/NotificationLottiePreference;->initView()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 32
    sget v0, Lcom/android/settings/R$layout;->op_notification_lottie:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 38
    sget v0, Lcom/android/settings/R$id;->anim_notification_lottie:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/settings/widget/NotificationLottiePreference;->mNotificationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 39
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/android/settings/widget/NotificationLottiePreference;->mNotificationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "op_notification_lottie_dark.json"

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/NotificationLottiePreference;->mNotificationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "op_notification_lottie_light.json"

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 45
    :goto_0
    iget-object p0, p0, Lcom/android/settings/widget/NotificationLottiePreference;->mNotificationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method
