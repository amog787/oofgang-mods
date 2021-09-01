.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenDetailActivity$zfW1l54guFrDDoquOZi2XvPQd64;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenDetailActivity$zfW1l54guFrDDoquOZi2XvPQd64;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenDetailActivity$zfW1l54guFrDDoquOZi2XvPQd64;

    invoke-direct {v0}, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenDetailActivity$zfW1l54guFrDDoquOZi2XvPQd64;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenDetailActivity$zfW1l54guFrDDoquOZi2XvPQd64;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenDetailActivity$zfW1l54guFrDDoquOZi2XvPQd64;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->lambda$getUserShortcutTypes$2(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
