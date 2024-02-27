.class public final Landroidx/core/content/res/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/content/res/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private final a:Landroidx/core/provider/e;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/core/provider/e;IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/res/e$e;->a:Landroidx/core/provider/e;

    iput p2, p0, Landroidx/core/content/res/e$e;->c:I

    iput p3, p0, Landroidx/core/content/res/e$e;->b:I

    iput-object p4, p0, Landroidx/core/content/res/e$e;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Landroidx/core/content/res/e$e;->c:I

    return v0
.end method

.method public b()Landroidx/core/provider/e;
    .registers 2

    iget-object v0, p0, Landroidx/core/content/res/e$e;->a:Landroidx/core/provider/e;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/core/content/res/e$e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Landroidx/core/content/res/e$e;->b:I

    return v0
.end method
