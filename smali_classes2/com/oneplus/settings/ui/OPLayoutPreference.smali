.class public Lcom/oneplus/settings/ui/OPLayoutPreference;
.super Landroidx/preference/Preference;
.source "OPLayoutPreference.java"


# instance fields
.field private mAllowDividerAbove:Z

.field private mAllowDividerBelow:Z

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/ui/OPLayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lcom/oneplus/settings/ui/-$$Lambda$OPLayoutPreference$VqWBg5-8BddXXxYU5xl0ZZGKTck;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPLayoutPreference$VqWBg5-8BddXXxYU5xl0ZZGKTck;-><init>(Lcom/oneplus/settings/ui/OPLayoutPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPLayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPLayoutPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Lcom/oneplus/settings/ui/-$$Lambda$OPLayoutPreference$VqWBg5-8BddXXxYU5xl0ZZGKTck;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPLayoutPreference$VqWBg5-8BddXXxYU5xl0ZZGKTck;-><init>(Lcom/oneplus/settings/ui/OPLayoutPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPLayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/settings/ui/OPLayoutPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p1, Lcom/oneplus/settings/ui/-$$Lambda$OPLayoutPreference$VqWBg5-8BddXXxYU5xl0ZZGKTck;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPLayoutPreference$VqWBg5-8BddXXxYU5xl0ZZGKTck;-><init>(Lcom/oneplus/settings/ui/OPLayoutPreference;)V

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 59
    invoke-direct {p0, p2}, Lcom/oneplus/settings/ui/OPLayoutPreference;->setView(Landroid/view/View;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 63
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    sget v1, Lcom/android/settings/R$styleable;->Preference_allowDividerAbove:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/ui/OPLayoutPreference;->mAllowDividerAbove:Z

    .line 66
    sget v1, Lcom/android/settings/R$styleable;->Preference_allowDividerBelow:I

    invoke-static {v0, v1, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/ui/OPLayoutPreference;->mAllowDividerBelow:Z

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 72
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 81
    invoke-virtual {p1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPLayoutPreference;->setView(Landroid/view/View;)V

    return-void

    .line 75
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "LayoutPreference requires a layout to be defined"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->performClick(Landroid/view/View;)V

    return-void
.end method

.method private setView(Landroid/view/View;)V
    .locals 2

    .line 86
    sget v0, Lcom/android/settings/R$layout;->layout_preference_frame:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 87
    sget v0, Lcom/android/settings/R$id;->all_details:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 89
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLayoutPreference;->mRootView:Landroid/view/View;

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 115
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPLayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$0$OPLayoutPreference(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPLayoutPreference;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 97
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v0

    .line 100
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 101
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 102
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPLayoutPreference;->mAllowDividerAbove:Z

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 103
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPLayoutPreference;->mAllowDividerBelow:Z

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 105
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    .line 106
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 107
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPLayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
