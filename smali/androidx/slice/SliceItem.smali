.class public final Landroidx/slice/SliceItem;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SliceItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceItem$ActionHandler;
    }
.end annotation


# instance fields
.field mFormat:Ljava/lang/String;

.field protected mHints:[Ljava/lang/String;

.field mHolder:Landroidx/slice/SliceItemHolder;

.field mObj:Ljava/lang/Object;

.field mSanitizedText:Ljava/lang/CharSequence;

.field mSubType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 110
    sget-object v0, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v0, "text"

    .line 113
    iput-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 160
    new-instance v0, Landroidx/core/util/Pair;

    invoke-direct {v0, p1, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p3, p4, p5}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 353
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 110
    sget-object v0, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v0, "text"

    .line 113
    iput-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    const-string v0, "hints"

    .line 354
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v0, "format"

    .line 355
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v0, "subtype"

    .line 356
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 357
    iget-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/slice/SliceItem;->readObj(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 130
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 110
    sget-object v0, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v0, "text"

    .line 113
    iput-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 131
    iput-object p4, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 132
    iput-object p2, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 134
    iput-object p1, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    return-void
.end method

.method private static checkSpan(Ljava/lang/Object;)Z
    .locals 1

    .line 687
    instance-of v0, p0, Landroid/text/style/AlignmentSpan;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/text/style/RelativeSizeSpan;

    if-nez v0, :cond_1

    instance-of p0, p0, Landroid/text/style/StyleSpan;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static checkSpannedText(Landroid/text/Spanned;)Z
    .locals 4

    .line 661
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 662
    invoke-static {v3}, Landroidx/slice/SliceItem;->checkSpan(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static fixSpan(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 694
    invoke-static {p0}, Landroidx/slice/SliceItem;->checkSpan(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static fixSpannableText(Landroid/text/Spannable;)V
    .locals 8

    .line 668
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 669
    invoke-static {v3}, Landroidx/slice/SliceItem;->fixSpan(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    .line 673
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 674
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 675
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    .line 676
    invoke-interface {p0, v4, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 679
    :cond_1
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static layoutDirectionToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 595
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "LOCALE"

    return-object p0

    :cond_1
    const-string p0, "INHERIT"

    return-object p0

    :cond_2
    const-string p0, "RTL"

    return-object p0

    :cond_3
    const-string p0, "LTR"

    return-object p0
.end method

.method private static readObj(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 3

    .line 431
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "slice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "input"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "action"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "obj"

    packed-switch v0, :pswitch_data_0

    .line 449
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 447
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 445
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 441
    :pswitch_2
    new-instance p0, Landroidx/core/util/Pair;

    .line 442
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/slice/Slice;

    const-string v2, "obj_2"

    .line 443
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/slice/Slice;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 439
    :pswitch_3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 437
    :pswitch_4
    new-instance p0, Landroidx/slice/Slice;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/slice/Slice;-><init>(Landroid/os/Bundle;)V

    return-object p0

    .line 435
    :pswitch_5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0

    .line 433
    :pswitch_6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createFromBundle(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static sanitizeText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 647
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 648
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroidx/slice/SliceItem;->fixSpannableText(Landroid/text/Spannable;)V

    return-object p0

    .line 650
    :cond_0
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 651
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Landroidx/slice/SliceItem;->checkSpannedText(Landroid/text/Spanned;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 652
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 653
    invoke-static {v0}, Landroidx/slice/SliceItem;->fixSpannableText(Landroid/text/Spannable;)V

    return-object v0

    :cond_2
    return-object p0
.end method

.method public static typeToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 457
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "slice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "input"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "action"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "RemoteInput"

    return-object p0

    :pswitch_1
    const-string p0, "Long"

    return-object p0

    :pswitch_2
    const-string p0, "Int"

    return-object p0

    :pswitch_3
    const-string p0, "Action"

    return-object p0

    :pswitch_4
    const-string p0, "Image"

    return-object p0

    :pswitch_5
    const-string p0, "Text"

    return-object p0

    :pswitch_6
    const-string p0, "Slice"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeObj(Landroid/os/Bundle;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 404
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "slice"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "input"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "image"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "text"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "long"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "int"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "action"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p3, -0x1

    :goto_1
    const-string v0, "obj"

    packed-switch p3, :pswitch_data_0

    goto :goto_2

    .line 425
    :pswitch_0
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    .line 422
    :pswitch_1
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 419
    :pswitch_2
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 415
    :pswitch_3
    check-cast p2, Landroidx/core/util/Pair;

    iget-object p0, p2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 416
    iget-object p0, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroidx/slice/Slice;

    invoke-virtual {p0}, Landroidx/slice/Slice;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "obj_2"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 412
    :pswitch_4
    check-cast p2, Landroidx/slice/Slice;

    invoke-virtual {p2}, Landroidx/slice/Slice;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    .line 409
    :pswitch_5
    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    .line 406
    :pswitch_6
    check-cast p2, Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {p2}, Landroidx/core/graphics/drawable/IconCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addHint(Ljava/lang/String;)V
    .locals 2

    .line 194
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroidx/slice/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    return-void
.end method

.method public fireAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0, p1, p2}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroidx/core/util/Pair;

    iget-object v0, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 294
    instance-of v1, v0, Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 295
    move-object v2, v0

    check-cast v2, Landroid/app/PendingIntent;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    const/4 p0, 0x0

    return p0

    .line 298
    :cond_0
    check-cast v0, Landroidx/slice/SliceItem$ActionHandler;

    invoke-interface {v0, p0, p1, p2}, Landroidx/slice/SliceItem$ActionHandler;->onAction(Landroidx/slice/SliceItem;Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getAction()Landroid/app/PendingIntent;
    .locals 1

    .line 269
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Landroidx/core/util/Pair;

    iget-object p0, p0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 270
    instance-of v0, p0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 271
    check-cast p0, Landroid/app/PendingIntent;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    .line 211
    iget-object p0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getHints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object p0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 260
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public getInt()I
    .locals 0

    .line 318
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLong()J
    .locals 2

    .line 338
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteInput()Landroid/app/RemoteInput;
    .locals 0

    .line 311
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Landroid/app/RemoteInput;

    return-object p0
.end method

.method public getSanitizedText()Ljava/lang/CharSequence;
    .locals 1

    .line 241
    iget-object v0, p0, Landroidx/slice/SliceItem;->mSanitizedText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceItem;->sanitizeText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mSanitizedText:Ljava/lang/CharSequence;

    .line 242
    :cond_0
    iget-object p0, p0, Landroidx/slice/SliceItem;->mSanitizedText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 2

    .line 327
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Landroidx/core/util/Pair;

    iget-object p0, p0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroidx/slice/Slice;

    return-object p0

    .line 330
    :cond_0
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Landroidx/slice/Slice;

    return-object p0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 0

    .line 224
    iget-object p0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    .line 231
    iget-object p0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public varargs hasAnyHints([Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 394
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 395
    iget-object v4, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v4, v3}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public hasHint(Ljava/lang/String;)Z
    .locals 0

    .line 346
    iget-object p0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onPostParceling()V
    .locals 3

    .line 566
    iget-object v0, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 567
    iget-object v2, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/slice/SliceItemHolder;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 568
    iget-object v0, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    invoke-virtual {v0}, Landroidx/slice/SliceItemHolder;->release()V

    goto :goto_0

    .line 570
    :cond_0
    iput-object v1, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 572
    :goto_0
    iput-object v1, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    return-void
.end method

.method public onPreParceling(Z)V
    .locals 3

    .line 561
    new-instance v0, Landroidx/slice/SliceItemHolder;

    iget-object v1, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Landroidx/slice/SliceItemHolder;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 366
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 367
    iget-object v1, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v2, "hints"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    const-string v2, "subtype"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroidx/slice/SliceItem;->writeObj(Landroid/os/Bundle;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 481
    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3c

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x20

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    iget-object v2, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    array-length v3, v2

    if-lez v3, :cond_1

    .line 501
    invoke-static {v0, v2}, Landroidx/slice/Slice;->appendHints(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "slice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v5

    goto :goto_0

    :sswitch_1
    const-string v4, "image"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v8

    goto :goto_0

    :sswitch_2
    const-string v4, "text"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v9

    goto :goto_0

    :sswitch_3
    const-string v4, "long"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v6

    goto :goto_0

    :sswitch_4
    const-string v4, "int"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v7

    goto :goto_0

    :sswitch_5
    const-string v4, "action"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v10

    :cond_2
    :goto_0
    const/16 v2, 0x7d

    const/16 v4, 0xa

    const-string/jumbo v11, "{\n"

    if-eqz v3, :cond_c

    if-eq v3, v10, :cond_b

    if-eq v3, v9, :cond_a

    if-eq v3, v8, :cond_9

    if-eq v3, v7, :cond_6

    if-eq v3, v6, :cond_3

    .line 552
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/slice/SliceItem;->typeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 538
    :cond_3
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "millis"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 539
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_4

    const-string p0, "INFINITY"

    .line 540
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 542
    :cond_4
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v1

    .line 543
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    const/high16 v7, 0x40000

    .line 542
    invoke-static/range {v1 .. v7}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 548
    :cond_5
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x4c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 526
    :cond_6
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "color"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 527
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getInt()I

    move-result p0

    new-array p1, v7, [Ljava/lang/Object;

    .line 529
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v5

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v10

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v9

    .line 530
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v8

    const-string p0, "a=0x%02x r=0x%02x g=0x%02x b=0x%02x"

    .line 528
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 531
    :cond_7
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "layout_direction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 532
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getInt()I

    move-result p0

    invoke-static {p0}, Landroidx/slice/SliceItem;->layoutDirectionToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 534
    :cond_8
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getInt()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 523
    :cond_9
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    const/16 p1, 0x22

    .line 520
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 513
    :cond_b
    iget-object v3, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v3, Landroidx/core/util/Pair;

    iget-object v3, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    const/16 v5, 0x5b

    .line 514
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/slice/Slice;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 507
    :cond_c
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/slice/Slice;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const-string p0, "\n"

    .line 555
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_5
        0x197ef -> :sswitch_4
        0x32c67c -> :sswitch_3
        0x36452d -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch
.end method
