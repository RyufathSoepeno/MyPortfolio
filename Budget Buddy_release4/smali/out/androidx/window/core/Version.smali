.class public final Landroidx/window/core/Version;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/core/Version$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/window/core/Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final CURRENT:Landroidx/window/core/Version;

.field public static final Companion:Landroidx/window/core/Version$Companion;

.field private static final UNKNOWN:Landroidx/window/core/Version;

.field private static final VERSION_0_1:Landroidx/window/core/Version;

.field private static final VERSION_1_0:Landroidx/window/core/Version;

.field private static final VERSION_PATTERN_STRING:Ljava/lang/String; = "(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:-(.+))?"


# instance fields
.field private final bigInteger$delegate:La1/e;

.field private final description:Ljava/lang/String;

.field private final major:I

.field private final minor:I

.field private final patch:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroidx/window/core/Version$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/core/Version$Companion;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Landroidx/window/core/Version;->Companion:Landroidx/window/core/Version$Companion;

    new-instance v0, Landroidx/window/core/Version;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v1, v1, v2}, Landroidx/window/core/Version;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroidx/window/core/Version;->UNKNOWN:Landroidx/window/core/Version;

    new-instance v0, Landroidx/window/core/Version;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1, v2}, Landroidx/window/core/Version;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroidx/window/core/Version;->VERSION_0_1:Landroidx/window/core/Version;

    new-instance v0, Landroidx/window/core/Version;

    invoke-direct {v0, v3, v1, v1, v2}, Landroidx/window/core/Version;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroidx/window/core/Version;->VERSION_1_0:Landroidx/window/core/Version;

    sput-object v0, Landroidx/window/core/Version;->CURRENT:Landroidx/window/core/Version;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/window/core/Version;->major:I

    iput p2, p0, Landroidx/window/core/Version;->minor:I

    iput p3, p0, Landroidx/window/core/Version;->patch:I

    iput-object p4, p0, Landroidx/window/core/Version;->description:Ljava/lang/String;

    new-instance p1, Landroidx/window/core/Version$bigInteger$2;

    invoke-direct {p1, p0}, Landroidx/window/core/Version$bigInteger$2;-><init>(Landroidx/window/core/Version;)V

    invoke-static {p1}, La1/f;->a(Lj1/a;)La1/e;

    move-result-object p1

    iput-object p1, p0, Landroidx/window/core/Version;->bigInteger$delegate:La1/e;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;Lkotlin/jvm/internal/g;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/window/core/Version;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCURRENT$cp()Landroidx/window/core/Version;
    .registers 1

    sget-object v0, Landroidx/window/core/Version;->CURRENT:Landroidx/window/core/Version;

    return-object v0
.end method

.method public static final synthetic access$getUNKNOWN$cp()Landroidx/window/core/Version;
    .registers 1

    sget-object v0, Landroidx/window/core/Version;->UNKNOWN:Landroidx/window/core/Version;

    return-object v0
.end method

.method public static final synthetic access$getVERSION_0_1$cp()Landroidx/window/core/Version;
    .registers 1

    sget-object v0, Landroidx/window/core/Version;->VERSION_0_1:Landroidx/window/core/Version;

    return-object v0
.end method

.method public static final synthetic access$getVERSION_1_0$cp()Landroidx/window/core/Version;
    .registers 1

    sget-object v0, Landroidx/window/core/Version;->VERSION_1_0:Landroidx/window/core/Version;

    return-object v0
.end method

.method private final getBigInteger()Ljava/math/BigInteger;
    .registers 3

    iget-object v0, p0, Landroidx/window/core/Version;->bigInteger$delegate:La1/e;

    invoke-interface {v0}, La1/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-bigInteger>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/math/BigInteger;

    return-object v0
.end method

.method public static final parse(Ljava/lang/String;)Landroidx/window/core/Version;
    .registers 2

    sget-object v0, Landroidx/window/core/Version;->Companion:Landroidx/window/core/Version$Companion;

    invoke-virtual {v0, p0}, Landroidx/window/core/Version$Companion;->parse(Ljava/lang/String;)Landroidx/window/core/Version;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Landroidx/window/core/Version;)I
    .registers 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/window/core/Version;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p1}, Landroidx/window/core/Version;->getBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroidx/window/core/Version;

    invoke-virtual {p0, p1}, Landroidx/window/core/Version;->compareTo(Landroidx/window/core/Version;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Landroidx/window/core/Version;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Landroidx/window/core/Version;->major:I

    check-cast p1, Landroidx/window/core/Version;

    iget v2, p1, Landroidx/window/core/Version;->major:I

    if-ne v0, v2, :cond_1b

    iget v0, p0, Landroidx/window/core/Version;->minor:I

    iget v2, p1, Landroidx/window/core/Version;->minor:I

    if-ne v0, v2, :cond_1b

    iget v0, p0, Landroidx/window/core/Version;->patch:I

    iget p1, p1, Landroidx/window/core/Version;->patch:I

    if-ne v0, p1, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/window/core/Version;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getMajor()I
    .registers 2

    iget v0, p0, Landroidx/window/core/Version;->major:I

    return v0
.end method

.method public final getMinor()I
    .registers 2

    iget v0, p0, Landroidx/window/core/Version;->minor:I

    return v0
.end method

.method public final getPatch()I
    .registers 2

    iget v0, p0, Landroidx/window/core/Version;->patch:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Landroidx/window/core/Version;->major:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/window/core/Version;->minor:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/window/core/Version;->patch:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Landroidx/window/core/Version;->description:Ljava/lang/String;

    invoke-static {v0}, Lp1/d;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/window/core/Version;->description:Ljava/lang/String;

    const-string v1, "-"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_13
    const-string v0, ""

    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroidx/window/core/Version;->major:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/window/core/Version;->minor:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/window/core/Version;->patch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
