.class public Lcom/oneplus/settings/utils/OPFirewallRule;
.super Ljava/lang/Object;
.source "OPFirewallRule.java"


# instance fields
.field private mobile:Ljava/lang/Integer;

.field private pkg:Ljava/lang/String;

.field private wlan:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->pkg:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->wlan:Ljava/lang/Integer;

    .line 29
    iput-object p4, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->mobile:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->pkg:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->wlan:Ljava/lang/Integer;

    .line 21
    iput-object p3, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->mobile:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getMobile()Ljava/lang/Integer;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->mobile:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->pkg:Ljava/lang/String;

    return-object p0
.end method

.method public getWlan()Ljava/lang/Integer;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->wlan:Ljava/lang/Integer;

    return-object p0
.end method
