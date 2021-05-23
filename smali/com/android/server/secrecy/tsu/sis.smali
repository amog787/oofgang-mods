.class public Lcom/android/server/secrecy/tsu/sis;
.super Lcom/android/server/secrecy/tsu/tsu;
.source ""


# static fields
.field private static tsu:Ljava/lang/String; = "SecrecyService.LogEncryptWork"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/server/secrecy/tsu/sis;->tsu:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/secrecy/tsu/sis;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/secrecy/tsu/tsu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
