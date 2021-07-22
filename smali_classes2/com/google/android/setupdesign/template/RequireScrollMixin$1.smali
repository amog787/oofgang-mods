.class Lcom/google/android/setupdesign/template/RequireScrollMixin$1;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupdesign/template/RequireScrollMixin;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$1;->this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    iput-object p2, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$1;->this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-static {v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->access$000(Lcom/google/android/setupdesign/template/RequireScrollMixin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object p0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$1;->this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-static {p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->access$100(Lcom/google/android/setupdesign/template/RequireScrollMixin;)Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;->pageScrollDown()V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$1;->val$listener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    .line 128
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
