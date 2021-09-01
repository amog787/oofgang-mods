.class Lcom/google/android/setupdesign/template/RequireScrollMixin$4;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScrollWithButton(Lcom/google/android/setupcompat/template/FooterButton;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$button:Lcom/google/android/setupcompat/template/FooterButton;

.field final synthetic val$moreText:Ljava/lang/CharSequence;

.field final synthetic val$nextText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Lcom/google/android/setupcompat/template/FooterButton;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 239
    iput-object p2, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;->val$button:Lcom/google/android/setupcompat/template/FooterButton;

    iput-object p3, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;->val$moreText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;->val$nextText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequireScrollStateChanged(Z)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;->val$button:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;->val$moreText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$4;->val$nextText:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
