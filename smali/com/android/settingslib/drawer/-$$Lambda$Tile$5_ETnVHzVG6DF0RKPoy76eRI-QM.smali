.class public final synthetic Lcom/android/settingslib/drawer/-$$Lambda$Tile$5_ETnVHzVG6DF0RKPoy76eRI-QM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settingslib/drawer/-$$Lambda$Tile$5_ETnVHzVG6DF0RKPoy76eRI-QM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/drawer/-$$Lambda$Tile$5_ETnVHzVG6DF0RKPoy76eRI-QM;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/-$$Lambda$Tile$5_ETnVHzVG6DF0RKPoy76eRI-QM;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/-$$Lambda$Tile$5_ETnVHzVG6DF0RKPoy76eRI-QM;->INSTANCE:Lcom/android/settingslib/drawer/-$$Lambda$Tile$5_ETnVHzVG6DF0RKPoy76eRI-QM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settingslib/drawer/Tile;

    check-cast p2, Lcom/android/settingslib/drawer/Tile;

    invoke-static {p1, p2}, Lcom/android/settingslib/drawer/Tile;->lambda$static$0(Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I

    move-result p0

    return p0
.end method
