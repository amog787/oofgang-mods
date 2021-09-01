.class Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$4;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->addAndAnimateNewContent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$4;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 360
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$4;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->access$000(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 363
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$4;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->access$000(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    .line 364
    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$4;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->access$400(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/view/View;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 365
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$4;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->access$400(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    .line 366
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$4;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    .line 367
    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->access$500(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/app/Activity;

    move-result-object p0

    const p2, 0x10c000e

    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xc8

    .line 369
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 370
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
