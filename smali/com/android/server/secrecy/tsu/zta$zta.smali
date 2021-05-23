.class Lcom/android/server/secrecy/tsu/zta$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/tsu/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/secrecy/tsu/zta;

.field private final you:Ljava/lang/String;

.field private final zta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/secrecy/tsu/zta;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/secrecy/tsu/zta$zta;->sis:Lcom/android/server/secrecy/tsu/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/secrecy/tsu/zta$zta;->zta:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/secrecy/tsu/zta$zta;->you:Ljava/lang/String;

    return-void
.end method

.method static synthetic you(Lcom/android/server/secrecy/tsu/zta$zta;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/tsu/zta$zta;->you:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/secrecy/tsu/zta$zta;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/tsu/zta$zta;->zta:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public sis()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/tsu/zta$zta;->you:Ljava/lang/String;

    return-object p0
.end method

.method public tsu()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/tsu/zta$zta;->zta:Ljava/lang/String;

    return-object p0
.end method
