.class public Lcom/oneplus/settings/widget/DividerPreference;
.super Landroidx/preference/Preference;
.source "DividerPreference.java"


# instance fields
.field private mAllowAbove:Ljava/lang/Boolean;

.field private mAllowBelow:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/widget/DividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    sget-object v0, Lcom/android/settings/R$styleable;->DividerPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 32
    sget p2, Lcom/android/settings/R$styleable;->DividerPreference_allowDividerAbove:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 33
    sget p2, Lcom/android/settings/R$styleable;->DividerPreference_allowDividerAbove:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/widget/DividerPreference;->mAllowAbove:Ljava/lang/Boolean;

    .line 35
    :cond_0
    sget p2, Lcom/android/settings/R$styleable;->DividerPreference_allowDividerBelow:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 36
    sget p2, Lcom/android/settings/R$styleable;->DividerPreference_allowDividerBelow:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/widget/DividerPreference;->mAllowBelow:Ljava/lang/Boolean;

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/widget/DividerPreference;->mAllowAbove:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 63
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/widget/DividerPreference;->mAllowBelow:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 64
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    :cond_1
    return-void
.end method
