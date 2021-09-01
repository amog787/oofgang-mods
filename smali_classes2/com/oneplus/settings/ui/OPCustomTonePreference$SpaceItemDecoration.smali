.class Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "OPCustomTonePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomTonePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpaceItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;I)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 309
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 310
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-virtual {p3}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$dimen;->oneplus_settings_layout_margin_left2:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    .line 312
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 313
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result p2

    .line 314
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$100(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_0

    .line 315
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$dimen;->oneplus_settings_layout_margin_left2:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method
