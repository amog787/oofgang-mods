.class public final synthetic Lcom/android/server/wm/cno;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic zta:Lcom/android/server/wm/OpScreenModeService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/OpScreenModeService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/cno;->zta:Lcom/android/server/wm/OpScreenModeService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/cno;->zta:Lcom/android/server/wm/OpScreenModeService;

    check-cast p1, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->tsu(Landroid/media/AudioRecordingConfiguration;)Z

    move-result p0

    return p0
.end method
