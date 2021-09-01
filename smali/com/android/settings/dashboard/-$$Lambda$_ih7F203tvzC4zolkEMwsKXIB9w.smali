.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$_ih7F203tvzC4zolkEMwsKXIB9w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$_ih7F203tvzC4zolkEMwsKXIB9w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$_ih7F203tvzC4zolkEMwsKXIB9w;

    invoke-direct {v0}, Lcom/android/settings/dashboard/-$$Lambda$_ih7F203tvzC4zolkEMwsKXIB9w;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/-$$Lambda$_ih7F203tvzC4zolkEMwsKXIB9w;->INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$_ih7F203tvzC4zolkEMwsKXIB9w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroidx/preference/Preference;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
