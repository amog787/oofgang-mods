.class public Lcom/android/server/secrecy/tsu/tsu;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final sis:Z

.field private final you:Landroid/content/Context;

.field private final zta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/secrecy/tsu/tsu;->sis:Z

    iput-object p1, p0, Lcom/android/server/secrecy/tsu/tsu;->you:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/secrecy/tsu/tsu;->zta:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public sis()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/tsu/tsu;->zta:Ljava/lang/String;

    return-object p0
.end method

.method public tsu()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public you(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public zta()V
    .locals 0

    return-void
.end method
