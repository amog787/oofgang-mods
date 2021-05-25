.class public final synthetic Lcom/android/server/am/tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic zta:Lcom/android/server/am/veq;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/veq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/tsu;->zta:Lcom/android/server/am/veq;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/tsu;->zta:Lcom/android/server/am/veq;

    check-cast p1, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/server/am/veq;->ear(Landroid/media/AudioRecordingConfiguration;)Z

    move-result p0

    return p0
.end method
