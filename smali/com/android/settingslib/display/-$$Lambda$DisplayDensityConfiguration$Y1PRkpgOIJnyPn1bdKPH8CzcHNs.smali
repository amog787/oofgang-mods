.class public final synthetic Lcom/android/settingslib/display/-$$Lambda$DisplayDensityConfiguration$Y1PRkpgOIJnyPn1bdKPH8CzcHNs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityConfiguration$Y1PRkpgOIJnyPn1bdKPH8CzcHNs;->f$0:I

    iput p2, p0, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityConfiguration$Y1PRkpgOIJnyPn1bdKPH8CzcHNs;->f$1:I

    iput p3, p0, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityConfiguration$Y1PRkpgOIJnyPn1bdKPH8CzcHNs;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityConfiguration$Y1PRkpgOIJnyPn1bdKPH8CzcHNs;->f$0:I

    iget v1, p0, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityConfiguration$Y1PRkpgOIJnyPn1bdKPH8CzcHNs;->f$1:I

    iget p0, p0, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityConfiguration$Y1PRkpgOIJnyPn1bdKPH8CzcHNs;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/settingslib/display/DisplayDensityConfiguration;->lambda$setForcedDisplayDensity$1(III)V

    return-void
.end method
