.class public interface abstract Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;
.super Ljava/lang/Object;
.source "SimcardDataModelInterface.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getCurrentTrafficRunningSlotId()I
.end method

.method public abstract getSlotOperatorName(I)Ljava/lang/String;
.end method

.method public abstract isSlotOperatorSupportedBySdk(I)Z
.end method

.method public abstract isSlotSimInserted(I)Z
.end method

.method public abstract isSlotSimReady(I)Z
.end method

.method public abstract registerSimStateListener(Lcom/oneplus/security/network/simcard/SimStateListener;)V
.end method

.method public abstract removeSimStateListener(Lcom/oneplus/security/network/simcard/SimStateListener;)V
.end method

.method public abstract setDataEnabled(Z)V
.end method
