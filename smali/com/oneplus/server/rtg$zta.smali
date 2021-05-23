.class final Lcom/oneplus/server/rtg$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zta"
.end annotation


# instance fields
.field final sis:I

.field final synthetic tsu:Lcom/oneplus/server/rtg;

.field final you:I

.field final zta:Lcom/oneplus/frontmonitor/IFrontListener;


# direct methods
.method public constructor <init>(Lcom/oneplus/server/rtg;Lcom/oneplus/frontmonitor/IFrontListener;II)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/rtg$zta;->tsu:Lcom/oneplus/server/rtg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oneplus/server/rtg$zta;->zta:Lcom/oneplus/frontmonitor/IFrontListener;

    iput p3, p0, Lcom/oneplus/server/rtg$zta;->you:I

    iput p4, p0, Lcom/oneplus/server/rtg$zta;->sis:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/server/rtg$zta;->tsu:Lcom/oneplus/server/rtg;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/server/rtg$zta;->tsu:Lcom/oneplus/server/rtg;

    iget-object v2, p0, Lcom/oneplus/server/rtg$zta;->zta:Lcom/oneplus/frontmonitor/IFrontListener;

    iget v3, p0, Lcom/oneplus/server/rtg$zta;->you:I

    iget p0, p0, Lcom/oneplus/server/rtg$zta;->sis:I

    invoke-static {v1, v2, v3, p0}, Lcom/oneplus/server/rtg;->zta(Lcom/oneplus/server/rtg;Lcom/oneplus/frontmonitor/IFrontListener;II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
