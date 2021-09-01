.class public Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;
.super Landroidx/preference/Preference;
.source "OPGestureAnswerCallInStructionsCategory.java"


# instance fields
.field private mLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 30
    sget v0, Lcom/android/settings/R$layout;->op_gesture_answer_call_instructions_category:I

    iput v0, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget p2, Lcom/android/settings/R$layout;->op_gesture_answer_call_instructions_category:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    sget p2, Lcom/android/settings/R$layout;->op_gesture_answer_call_instructions_category:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 53
    iget p1, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 p0, 0x1

    .line 58
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 60
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->supportGestureAudioRoute()Z

    move-result p0

    if-nez p0, :cond_0

    .line 61
    sget p0, Lcom/android/settings/R$id;->op_fingerprint_name:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 63
    sget p1, Lcom/android/settings/R$string;->oneplus_gesture_of_answer_call_info:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
