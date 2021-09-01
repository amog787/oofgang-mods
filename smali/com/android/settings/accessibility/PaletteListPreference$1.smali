.class Lcom/android/settings/accessibility/PaletteListPreference$1;
.super Ljava/lang/Object;
.source "PaletteListPreference.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/PaletteListPreference;->initPreDrawListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/PaletteListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/PaletteListPreference;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/settings/accessibility/PaletteListPreference$1;->this$0:Lcom/android/settings/accessibility/PaletteListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/android/settings/accessibility/PaletteListPreference$1;->this$0:Lcom/android/settings/accessibility/PaletteListPreference;

    invoke-static {v0}, Lcom/android/settings/accessibility/PaletteListPreference;->access$000(Lcom/android/settings/accessibility/PaletteListPreference;)Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/PaletteListPreference$1;->this$0:Lcom/android/settings/accessibility/PaletteListPreference;

    invoke-static {v0}, Lcom/android/settings/accessibility/PaletteListPreference;->access$000(Lcom/android/settings/accessibility/PaletteListPreference;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/android/settings/accessibility/PaletteListPreference$1;->this$0:Lcom/android/settings/accessibility/PaletteListPreference;

    invoke-static {v1}, Lcom/android/settings/accessibility/PaletteListPreference;->access$000(Lcom/android/settings/accessibility/PaletteListPreference;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    .line 90
    iget-object v2, p0, Lcom/android/settings/accessibility/PaletteListPreference$1;->this$0:Lcom/android/settings/accessibility/PaletteListPreference;

    invoke-static {v2}, Lcom/android/settings/accessibility/PaletteListPreference;->access$000(Lcom/android/settings/accessibility/PaletteListPreference;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/PaletteListPreference$1;->this$0:Lcom/android/settings/accessibility/PaletteListPreference;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/PaletteListPreference;->access$102(Lcom/android/settings/accessibility/PaletteListPreference;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 97
    iget-object v2, p0, Lcom/android/settings/accessibility/PaletteListPreference$1;->this$0:Lcom/android/settings/accessibility/PaletteListPreference;

    .line 98
    invoke-static {v2}, Lcom/android/settings/accessibility/PaletteListPreference;->access$000(Lcom/android/settings/accessibility/PaletteListPreference;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 99
    iget-object v3, p0, Lcom/android/settings/accessibility/PaletteListPreference$1;->this$0:Lcom/android/settings/accessibility/PaletteListPreference;

    invoke-static {v3}, Lcom/android/settings/accessibility/PaletteListPreference;->access$000(Lcom/android/settings/accessibility/PaletteListPreference;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    mul-int/2addr v0, v3

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 100
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 101
    iget-object p0, p0, Lcom/android/settings/accessibility/PaletteListPreference$1;->this$0:Lcom/android/settings/accessibility/PaletteListPreference;

    invoke-static {p0}, Lcom/android/settings/accessibility/PaletteListPreference;->access$000(Lcom/android/settings/accessibility/PaletteListPreference;)Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x1

    return p0
.end method
