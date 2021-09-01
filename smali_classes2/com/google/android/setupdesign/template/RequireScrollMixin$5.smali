.class Lcom/google/android/setupdesign/template/RequireScrollMixin$5;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupdesign/template/RequireScrollMixin;->postScrollStateChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

.field final synthetic val$scrollNeeded:Z


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Z)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    iput-boolean p2, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->val$scrollNeeded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-static {v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->access$200(Lcom/google/android/setupdesign/template/RequireScrollMixin;)Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-static {v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->access$200(Lcom/google/android/setupdesign/template/RequireScrollMixin;)Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    move-result-object v0

    iget-boolean p0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->val$scrollNeeded:Z

    invoke-interface {v0, p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;->onRequireScrollStateChanged(Z)V

    :cond_0
    return-void
.end method
