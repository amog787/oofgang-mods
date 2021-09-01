.class Lcom/android/settings/applications/RunningServices$1;
.super Ljava/lang/Object;
.source "RunningServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningServices;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningServices;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/settings/applications/RunningServices$1;->this$0:Lcom/android/settings/applications/RunningServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/android/settings/applications/RunningServices$1;->this$0:Lcom/android/settings/applications/RunningServices;

    invoke-static {p0}, Lcom/android/settings/applications/RunningServices;->access$000(Lcom/android/settings/applications/RunningServices;)Lcom/android/settings/widget/LoadingViewController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    return-void
.end method
