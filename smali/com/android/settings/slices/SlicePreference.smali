.class public Lcom/android/settings/slices/SlicePreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "SlicePreference.java"


# instance fields
.field private mSliceView:Landroidx/slice/widget/SliceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 36
    sget v0, Lcom/android/settings/R$attr;->slicePreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/android/settings/slices/SlicePreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/android/settings/slices/SlicePreference;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 46
    sget v0, Lcom/android/settings/R$id;->slice_view:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceView;

    iput-object v0, p0, Lcom/android/settings/slices/SlicePreference;->mSliceView:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setShowTitleItems(Z)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/slices/SlicePreference;->mSliceView:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setScrollable(Z)V

    .line 49
    iget-object p0, p0, Lcom/android/settings/slices/SlicePreference;->mSliceView:Landroidx/slice/widget/SliceView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onSliceUpdated(Landroidx/slice/Slice;)V
    .locals 2

    if-nez p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/settings/slices/SlicePreference;->mSliceView:Landroidx/slice/widget/SliceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/settings/slices/SlicePreference;->mSliceView:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/android/settings/slices/SlicePreference;->mSliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceView;->onChanged(Landroidx/slice/Slice;)V

    .line 59
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
