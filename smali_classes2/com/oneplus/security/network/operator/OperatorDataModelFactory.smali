.class public Lcom/oneplus/security/network/operator/OperatorDataModelFactory;
.super Ljava/lang/Object;
.source "OperatorDataModelFactory.java"


# direct methods
.method public static getOperatorDataModel(Landroid/content/Context;)Lcom/oneplus/security/network/operator/OperatorModelInterface;
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/oneplus/security/network/operator/NativeOperatorDataModel;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move-result-object p0

    return-object p0
.end method
