.class public Lcom/android/server/power/tsu/zta;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final rtg:Ljava/lang/String; = "FirewallRule"


# instance fields
.field private sis:Ljava/lang/Integer;

.field private tsu:Ljava/lang/Integer;

.field private you:Ljava/lang/String;

.field private zta:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/tsu/zta;->zta:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/android/server/power/tsu/zta;->you:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/power/tsu/zta;->sis:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/android/server/power/tsu/zta;->tsu:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/tsu/zta;->you:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/power/tsu/zta;->sis:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/android/server/power/tsu/zta;->tsu:Ljava/lang/Integer;

    return-void
.end method

.method private ssp(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ALLOW"

    goto :goto_0

    :cond_0
    const-string p0, "FORBID"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bio(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/tsu/zta;->you:Ljava/lang/String;

    return-void
.end method

.method public cno(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/tsu/zta;->zta:Ljava/lang/Integer;

    return-void
.end method

.method public igw(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/tsu/zta;->sis:Ljava/lang/Integer;

    return-void
.end method

.method public kth(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/tsu/zta;->tsu:Ljava/lang/Integer;

    return-void
.end method

.method public rtg()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/tsu/zta;->sis:Ljava/lang/Integer;

    return-object p0
.end method

.method public sis()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/tsu/zta;->tsu:Ljava/lang/Integer;

    return-object p0
.end method

.method public tsu()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/tsu/zta;->you:Ljava/lang/String;

    return-object p0
.end method

.method public you()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/tsu/zta;->zta:Ljava/lang/Integer;

    return-object p0
.end method

.method public zta(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # OPFirewallRule ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/tsu/zta;->zta:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/tsu/zta;->you:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], [wlan:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/tsu/zta;->sis:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/android/server/power/tsu/zta;->ssp(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mobile:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/tsu/zta;->tsu:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/android/server/power/tsu/zta;->ssp(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
