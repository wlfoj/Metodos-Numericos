function [result, err] = reg_polinomial(x, y, polyDegree)
    err = ""; % Initialize err to an empty string

    [sampleSize] = length(x);

    % Checking if the given inputs has the same size
    if sampleSize != length(y)
        err = "x and y must have the same length";
        result = NaN;
        return;
    end

    n = polyDegree + 1;
    a = zeros(n, n);
    b = zeros(n, 1);

    % Generating the linear system
    for index = 1:1:n
        k1 = index - 1;
        k2 = index;
        for j = 1:1:n
            if j == 1
                a(1, 1) = sampleSize;
            else
                s = 0;
                for k = 1:1:sampleSize
                    s = s + x(k)^(k2);
                end
                a(index, j) = s;
                a(j, index) = a(index, j);
                k2 = k2 + 1;
            end
        end

        s = 0;
        if i == 1
            for k = 1:1:sampleSize
                s = s + y(k)
            end
        else
            for k = 1:1:sampleSize
                s = s + y(k) * x(k)^(k1);
            end
        end
        b(index) = s;
        k1 = k1 + 1;
    end

    % Start the linear system solution

    m = sampleSize;
    % Superior Triangular Matrix
    for k = 1:1:n - 1
        for i = k + 1:1:n
            m = a(i, k) / a(k, k);
            a(i, k) = 0;
            for j = k + 1:1:n
                a(i, j) = a(i, j) - m * a(k, j);
            end
            b(i) = b(i) - m * b(k);
        end
    end

    % Start the system solution calculation
    x = zeros(n, 1);
    x(n) = b(n) / a(n, n);
    for k = n - 1:-1:1
        s = 0;
        for j = k + 1:1:n
            s = s + a(k, j) * x(j);
        end
        x(k) = (b(k) - s) / a(k, k);
    end

    result = x;
end
