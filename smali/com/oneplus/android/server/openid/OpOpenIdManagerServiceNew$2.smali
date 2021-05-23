.class Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$2;
.super Lcom/oneplus/android/openid/IOpOpenIdManagerNew$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$2;->this$0:Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;

    invoke-direct {p0}, Lcom/oneplus/android/openid/IOpOpenIdManagerNew$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public clearOpenId(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$2;->this$0:Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;

    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->tsu(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    array-length p1, p3

    if-nez p1, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$2;->this$0:Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;

    invoke-static {p1}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->zta(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;)Lcom/oneplus/android/server/openid/rtg;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/oneplus/android/server/openid/rtg;->igw(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$2;->this$0:Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;

    invoke-static {p0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->rtg(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;)Lcom/oneplus/android/server/openid/ssp;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/oneplus/android/server/openid/ssp;->sis(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    array-length p1, p3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    aget-object p1, p3, p1

    const-string v0, "-a"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "-h"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Open id manager dump options:"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  [-h] [cmd] ..."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    -h: print this help"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  cmd may be one of:"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    id: dump openid info"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    wl(or whitelist): print access whitelist for openid"

    :goto_2
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$2;->this$0:Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;

    invoke-static {p0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->zta(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;)Lcom/oneplus/android/server/openid/rtg;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/oneplus/android/server/openid/rtg;->igw(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v0, "wl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "whitelist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown cmd: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; use -h for help"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public getOpenId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$2;->this$0:Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;

    invoke-static {v0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->you(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$2;->this$0:Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;

    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->sis(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
