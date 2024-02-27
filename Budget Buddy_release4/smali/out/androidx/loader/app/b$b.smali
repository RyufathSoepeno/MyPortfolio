.class Landroidx/loader/app/b$b;
.super Landroidx/lifecycle/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final f:Landroidx/lifecycle/a0$b;


# instance fields
.field private d:Ll/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/h<",
            "Landroidx/loader/app/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/loader/app/b$b$a;

    invoke-direct {v0}, Landroidx/loader/app/b$b$a;-><init>()V

    sput-object v0, Landroidx/loader/app/b$b;->f:Landroidx/lifecycle/a0$b;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/lifecycle/z;-><init>()V

    new-instance v0, Ll/h;

    invoke-direct {v0}, Ll/h;-><init>()V

    iput-object v0, p0, Landroidx/loader/app/b$b;->d:Ll/h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/app/b$b;->e:Z

    return-void
.end method

.method static g(Landroidx/lifecycle/d0;)Landroidx/loader/app/b$b;
    .registers 3

    new-instance v0, Landroidx/lifecycle/a0;

    sget-object v1, Landroidx/loader/app/b$b;->f:Landroidx/lifecycle/a0$b;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/a0;-><init>(Landroidx/lifecycle/d0;Landroidx/lifecycle/a0$b;)V

    const-class p0, Landroidx/loader/app/b$b;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/a0;->a(Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object p0

    check-cast p0, Landroidx/loader/app/b$b;

    return-object p0
.end method


# virtual methods
.method protected d()V
    .registers 5

    invoke-super {p0}, Landroidx/lifecycle/z;->d()V

    iget-object v0, p0, Landroidx/loader/app/b$b;->d:Ll/h;

    invoke-virtual {v0}, Ll/h;->i()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Landroidx/loader/app/b$b;->d:Ll/h;

    invoke-virtual {v2, v1}, Ll/h;->j(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/loader/app/b$a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/loader/app/b$a;->l(Z)Lx/a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1b
    iget-object v0, p0, Landroidx/loader/app/b$b;->d:Ll/h;

    invoke-virtual {v0}, Ll/h;->b()V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Landroidx/loader/app/b$b;->d:Ll/h;

    invoke-virtual {v0}, Ll/h;->i()I

    move-result v0

    if-lez v0, :cond_55

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_22
    iget-object v2, p0, Landroidx/loader/app/b$b;->d:Ll/h;

    invoke-virtual {v2}, Ll/h;->i()I

    move-result v2

    if-ge v1, v2, :cond_55

    iget-object v2, p0, Landroidx/loader/app/b$b;->d:Ll/h;

    invoke-virtual {v2, v1}, Ll/h;->j(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/loader/app/b$a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/loader/app/b$b;->d:Ll/h;

    invoke-virtual {v3, v1}, Ll/h;->g(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/loader/app/b$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p2, p3, p4}, Landroidx/loader/app/b$a;->m(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_55
    return-void
.end method

.method h()V
    .registers 4

    iget-object v0, p0, Landroidx/loader/app/b$b;->d:Ll/h;

    invoke-virtual {v0}, Ll/h;->i()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Landroidx/loader/app/b$b;->d:Ll/h;

    invoke-virtual {v2, v1}, Ll/h;->j(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/loader/app/b$a;

    invoke-virtual {v2}, Landroidx/loader/app/b$a;->n()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method
