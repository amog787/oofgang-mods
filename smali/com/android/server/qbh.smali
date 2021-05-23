.class public Lcom/android/server/qbh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/qbh$zta;
    }
.end annotation


# static fields
.field private static final sis:Landroid/util/AtomicFile;

.field private static final you:Ljava/lang/String; = "diagnosis_heating.txt"


# instance fields
.field private final zta:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "diagnosis_heating.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/qbh;->sis:Landroid/util/AtomicFile;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/qbh;->zta:Landroid/util/LocalLog;

    return-void
.end method

.method private zta(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/qbh;->zta:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method
