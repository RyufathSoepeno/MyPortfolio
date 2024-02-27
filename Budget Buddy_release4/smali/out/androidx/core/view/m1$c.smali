.class Landroidx/core/view/m1$c;
.super Landroidx/core/view/m1$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static e:Ljava/lang/reflect/Field; = null

.field private static f:Z = false

.field private static g:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Z = false


# instance fields
.field private c:Landroid/view/WindowInsets;

.field private d:Landroidx/core/graphics/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/core/view/m1$f;-><init>()V

    invoke-static {}, Landroidx/core/view/m1$c;->h()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/m1$c;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/m1;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/core/view/m1$f;-><init>(Landroidx/core/view/m1;)V

    invoke-virtual {p1}, Landroidx/core/view/m1;->u()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/m1$c;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method private static h()Landroid/view/WindowInsets;
    .registers 7

    sget-boolean v0, Landroidx/core/view/m1$c;->f:Z

    const/4 v1, 0x1

    const-string v2, "WindowInsetsCompat"

    if-nez v0, :cond_1a

    :try_start_7
    const-class v0, Landroid/view/WindowInsets;

    const-string v3, "CONSUMED"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/m1$c;->e:Ljava/lang/reflect/Field;
    :try_end_11
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_7 .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    move-exception v0

    const-string v3, "Could not retrieve WindowInsets.CONSUMED field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    sput-boolean v1, Landroidx/core/view/m1$c;->f:Z

    :cond_1a
    sget-object v0, Landroidx/core/view/m1$c;->e:Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    if-eqz v0, :cond_33

    :try_start_1f
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    if-eqz v0, :cond_33

    new-instance v4, Landroid/view/WindowInsets;

    invoke-direct {v4, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1f .. :try_end_2c} :catch_2d

    return-object v4

    :catch_2d
    move-exception v0

    const-string v4, "Could not get value from WindowInsets.CONSUMED field"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    sget-boolean v0, Landroidx/core/view/m1$c;->h:Z

    const/4 v4, 0x0

    if-nez v0, :cond_4f

    :try_start_38
    const-class v0, Landroid/view/WindowInsets;

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Landroidx/core/view/m1$c;->g:Ljava/lang/reflect/Constructor;
    :try_end_46
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_38 .. :try_end_46} :catch_47

    goto :goto_4d

    :catch_47
    move-exception v0

    const-string v5, "Could not retrieve WindowInsets(Rect) constructor"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4d
    sput-boolean v1, Landroidx/core/view/m1$c;->h:Z

    :cond_4f
    sget-object v0, Landroidx/core/view/m1$c;->g:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_69

    :try_start_53
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;
    :try_end_62
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_53 .. :try_end_62} :catch_63

    return-object v0

    :catch_63
    move-exception v0

    const-string v1, "Could not invoke WindowInsets(Rect) constructor"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_69
    return-object v3
.end method


# virtual methods
.method b()Landroidx/core/view/m1;
    .registers 3

    invoke-virtual {p0}, Landroidx/core/view/m1$f;->a()V

    iget-object v0, p0, Landroidx/core/view/m1$c;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/m1;->v(Landroid/view/WindowInsets;)Landroidx/core/view/m1;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/view/m1$f;->b:[Landroidx/core/graphics/b;

    invoke-virtual {v0, v1}, Landroidx/core/view/m1;->q([Landroidx/core/graphics/b;)V

    iget-object v1, p0, Landroidx/core/view/m1$c;->d:Landroidx/core/graphics/b;

    invoke-virtual {v0, v1}, Landroidx/core/view/m1;->t(Landroidx/core/graphics/b;)V

    return-object v0
.end method

.method d(Landroidx/core/graphics/b;)V
    .registers 2

    iput-object p1, p0, Landroidx/core/view/m1$c;->d:Landroidx/core/graphics/b;

    return-void
.end method

.method f(Landroidx/core/graphics/b;)V
    .registers 6

    iget-object v0, p0, Landroidx/core/view/m1$c;->c:Landroid/view/WindowInsets;

    if-eqz v0, :cond_12

    iget v1, p1, Landroidx/core/graphics/b;->a:I

    iget v2, p1, Landroidx/core/graphics/b;->b:I

    iget v3, p1, Landroidx/core/graphics/b;->c:I

    iget p1, p1, Landroidx/core/graphics/b;->d:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/m1$c;->c:Landroid/view/WindowInsets;

    :cond_12
    return-void
.end method
