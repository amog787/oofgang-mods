.class public Lyou/zta/zta/zta/rtg/rtg$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/zta/zta/rtg/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "you"
.end annotation


# instance fields
.field private rtg:J

.field private sis:Ljava/lang/String;

.field private tsu:J

.field private you:Ljava/lang/String;

.field private zta:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic bio(Lyou/zta/zta/zta/rtg/rtg$you;)J
    .locals 2

    iget-wide v0, p0, Lyou/zta/zta/zta/rtg/rtg$you;->rtg:J

    return-wide v0
.end method

.method static synthetic cno(Lyou/zta/zta/zta/rtg/rtg$you;)J
    .locals 2

    iget-wide v0, p0, Lyou/zta/zta/zta/rtg/rtg$you;->tsu:J

    return-wide v0
.end method

.method static synthetic igw(Lyou/zta/zta/zta/rtg/rtg$you;J)J
    .locals 0

    iput-wide p1, p0, Lyou/zta/zta/zta/rtg/rtg$you;->rtg:J

    return-wide p1
.end method

.method static synthetic kth(Lyou/zta/zta/zta/rtg/rtg$you;J)J
    .locals 0

    iput-wide p1, p0, Lyou/zta/zta/zta/rtg/rtg$you;->tsu:J

    return-wide p1
.end method

.method static synthetic rtg(Lyou/zta/zta/zta/rtg/rtg$you;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/rtg$you;->sis:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic sis(Lyou/zta/zta/zta/rtg/rtg$you;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/rtg$you;->you:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ssp(Lyou/zta/zta/zta/rtg/rtg$you;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lyou/zta/zta/zta/rtg/rtg$you;->sis:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic tsu(Lyou/zta/zta/zta/rtg/rtg$you;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lyou/zta/zta/zta/rtg/rtg$you;->you:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic you(Lyou/zta/zta/zta/rtg/rtg$you;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lyou/zta/zta/zta/rtg/rtg$you;->zta:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zta(Lyou/zta/zta/zta/rtg/rtg$you;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/rtg$you;->zta:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public wtn()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lyou/zta/zta/zta/rtg/rtg$you;->zta:Ljava/lang/String;

    iput-object v0, p0, Lyou/zta/zta/zta/rtg/rtg$you;->you:Ljava/lang/String;

    iput-object v0, p0, Lyou/zta/zta/zta/rtg/rtg$you;->sis:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lyou/zta/zta/zta/rtg/rtg$you;->tsu:J

    iput-wide v0, p0, Lyou/zta/zta/zta/rtg/rtg$you;->rtg:J

    return-void
.end method
