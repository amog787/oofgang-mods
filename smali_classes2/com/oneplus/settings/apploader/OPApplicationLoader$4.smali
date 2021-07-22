.class Lcom/oneplus/settings/apploader/OPApplicationLoader$4;
.super Ljava/lang/Object;
.source "OPApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;ILandroid/os/Handler;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iput p2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->val$type:I

    iput-object p3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-virtual {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->onPreExecute()V

    .line 201
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoading:Z

    .line 202
    iget v1, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/16 v2, 0x3ec

    if-ne v1, v2, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadGameApp()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->val$type:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadAppListByType(I)V

    .line 206
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoading:Z

    .line 207
    invoke-virtual {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->onPostExecute()V

    .line 208
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->val$handler:Landroid/os/Handler;

    iget p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;->val$type:I

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
