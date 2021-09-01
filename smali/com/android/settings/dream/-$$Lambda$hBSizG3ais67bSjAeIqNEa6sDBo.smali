.class public final synthetic Lcom/android/settings/dream/-$$Lambda$hBSizG3ais67bSjAeIqNEa6sDBo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/dream/-$$Lambda$hBSizG3ais67bSjAeIqNEa6sDBo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/dream/-$$Lambda$hBSizG3ais67bSjAeIqNEa6sDBo;

    invoke-direct {v0}, Lcom/android/settings/dream/-$$Lambda$hBSizG3ais67bSjAeIqNEa6sDBo;-><init>()V

    sput-object v0, Lcom/android/settings/dream/-$$Lambda$hBSizG3ais67bSjAeIqNEa6sDBo;->INSTANCE:Lcom/android/settings/dream/-$$Lambda$hBSizG3ais67bSjAeIqNEa6sDBo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;

    check-cast p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-direct {p0, p1}, Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;-><init>(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V

    return-object p0
.end method
