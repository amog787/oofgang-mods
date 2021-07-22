.class public Lcom/oneplus/loading/DialogLoadingHelper;
.super Lcom/oneplus/loading/LoadingHelper;
.source "DialogLoadingHelper.java"


# instance fields
.field mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/oneplus/loading/LoadingHelper;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/oneplus/loading/DialogLoadingHelper;->mDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method protected hideProgree(Ljava/lang/Object;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/loading/DialogLoadingHelper;->mDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method protected showProgree()Ljava/lang/Object;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/oneplus/loading/DialogLoadingHelper;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/oneplus/loading/DialogLoadingHelper;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method
