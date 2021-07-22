.class Lcom/android/settings/core/InstrumentedPreferenceFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "InstrumentedPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/core/InstrumentedPreferenceFragment;->enableSpringEdgeEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field state:I

.field final synthetic val$springRelativeLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;


# direct methods
.method constructor <init>(Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)V
    .locals 0

    .line 166
    iput-object p2, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$1;->val$springRelativeLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 167
    iput p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$1;->state:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 171
    iput p2, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$1;->state:I

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 176
    iget p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$1;->state:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    if-eqz p2, :cond_0

    .line 177
    iget-object p0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$1;->val$springRelativeLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->onRecyclerViewScrolled()V

    :cond_0
    return-void
.end method
