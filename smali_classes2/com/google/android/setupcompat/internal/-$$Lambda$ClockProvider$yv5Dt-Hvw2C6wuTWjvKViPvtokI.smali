.class public final synthetic Lcom/google/android/setupcompat/internal/-$$Lambda$ClockProvider$yv5Dt-Hvw2C6wuTWjvKViPvtokI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/setupcompat/internal/Ticker;


# instance fields
.field public final synthetic f$0:Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$ClockProvider$yv5Dt-Hvw2C6wuTWjvKViPvtokI;->f$0:Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;

    return-void
.end method


# virtual methods
.method public final read()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$ClockProvider$yv5Dt-Hvw2C6wuTWjvKViPvtokI;->f$0:Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;

    invoke-static {p0}, Lcom/google/android/setupcompat/internal/ClockProvider;->lambda$setInstance$0(Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;)J

    move-result-wide v0

    return-wide v0
.end method
