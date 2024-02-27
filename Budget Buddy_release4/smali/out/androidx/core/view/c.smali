.class public final Landroidx/core/view/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/c$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/DisplayCutout;


# direct methods
.method private constructor <init>(Landroid/view/DisplayCutout;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/c;->a:Landroid/view/DisplayCutout;

    return-void
.end method

.method static e(Landroid/view/DisplayCutout;)Landroidx/core/view/c;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Landroidx/core/view/c;

    invoke-direct {v0, p0}, Landroidx/core/view/c;-><init>(Landroid/view/DisplayCutout;)V

    move-object p0, v0

    :goto_a
    return-object p0
.end method


# virtual methods
.method public a()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Landroidx/core/view/c;->a:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroidx/core/view/c$a;->c(Landroid/view/DisplayCutout;)I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Landroidx/core/view/c;->a:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroidx/core/view/c$a;->d(Landroid/view/DisplayCutout;)I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Landroidx/core/view/c;->a:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroidx/core/view/c$a;->e(Landroid/view/DisplayCutout;)I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Landroidx/core/view/c;->a:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroidx/core/view/c$a;->f(Landroid/view/DisplayCutout;)I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    const-class v0, Landroidx/core/view/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_1a

    :cond_f
    check-cast p1, Landroidx/core/view/c;

    iget-object v0, p0, Landroidx/core/view/c;->a:Landroid/view/DisplayCutout;

    iget-object p1, p1, Landroidx/core/view/c;->a:Landroid/view/DisplayCutout;

    invoke-static {v0, p1}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroidx/core/view/c;->a:Landroid/view/DisplayCutout;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCutoutCompat{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/view/c;->a:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
