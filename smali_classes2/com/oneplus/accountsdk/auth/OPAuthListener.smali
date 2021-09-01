.class public interface abstract Lcom/oneplus/accountsdk/auth/OPAuthListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onReqComplete()V
.end method

.method public abstract onReqFinish(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onReqLoading()V
.end method

.method public abstract onReqStart()V
.end method
