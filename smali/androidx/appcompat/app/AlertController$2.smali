.class Landroidx/appcompat/app/AlertController$2;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertController;->setupDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AlertController;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;)V
    .locals 0

    .line 781
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$2;->this$0:Landroidx/appcompat/app/AlertController;

    iput-object p2, p0, Landroidx/appcompat/app/AlertController$2;->val$parent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 784
    invoke-virtual {p2}, Landroid/view/WindowInsets;->isRound()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 786
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$2;->this$0:Landroidx/appcompat/app/AlertController;

    invoke-static {p1}, Landroidx/appcompat/app/AlertController;->access$000(Landroidx/appcompat/app/AlertController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/appcompat/R$dimen;->oneplus_alert_dialog_round_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 788
    iget-object p0, p0, Landroidx/appcompat/app/AlertController$2;->val$parent:Landroid/view/View;

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 790
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
