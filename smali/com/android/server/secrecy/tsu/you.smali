.class public Lcom/android/server/secrecy/tsu/you;
.super Lcom/android/server/secrecy/tsu/tsu;
.source ""


# static fields
.field private static rtg:Ljava/lang/String; = "SecrecyService.ActivityEncryptWork"


# instance fields
.field private final tsu:Lcom/android/server/secrecy/tsu/zta;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/server/secrecy/tsu/you;->rtg:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/secrecy/tsu/you;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/secrecy/tsu/tsu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/secrecy/tsu/zta;->sis()Lcom/android/server/secrecy/tsu/zta;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/secrecy/tsu/you;->tsu:Lcom/android/server/secrecy/tsu/zta;

    return-void
.end method


# virtual methods
.method public rtg(Landroid/content/pm/ActivityInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public ssp(Landroid/content/pm/ActivityInfo;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/tsu/you;->tsu:Lcom/android/server/secrecy/tsu/zta;

    invoke-virtual {p0, p1}, Lcom/android/server/secrecy/tsu/zta;->tsu(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public you(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/secrecy/tsu/tsu;->you(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/secrecy/tsu/you;->tsu:Lcom/android/server/secrecy/tsu/zta;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "    "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/secrecy/tsu/zta;->you(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method
